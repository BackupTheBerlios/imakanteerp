DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`ls_procedure_group` $$
CREATE PROCEDURE `mida`.`ls_procedure_group`(IN in_id INT(6), IN in_nom TINYINT, IN comprator TINYINT, IN in_cod VARCHAR(30), IN in_name VARCHAR(30), IN in_alid TINYINT)
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id, n.cod, n.name, n.alid FROM `mida`.`group` n WHERE nom = in_nom;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `mida`.`group`(nom, cod, name, alid) VALUES(in_nom, in_cod, in_name, in_alid);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `mida`.`group` SET cod = in_cod, name = in_name, nom = in_nom, alid = in_alid
           WHERE `mida`.`group`.id = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `mida`.`group`  WHERE id = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.id, n.nom, n.cod, n.name, n.alid FROM `mida`.`group` n WHERE `mida`.`group`.id = in_id;

     END IF;
     IF (comprator = 5) THEN
        SELECT n.id,  n.cod, n.name, n.alid  FROM `mida`.`group` n  WHERE n.cod LIKE CONCAT('%',in_cod,'%') AND
        n.name LIKE CONCAT('%',in_name,'%') AND n.alid LIKE CONCAT(in_alid,'%') AND n.nom=in_nom;
     END IF;
     IF (comprator = 6) THEN
        SELECT * FROM `mida`.`anlevel` n ORDER BY cod;
     END IF;



     IF (comprator = 7) THEN
        SELECT MAX(n.id) AS id FROM `mida`.`group` n;
     END IF;

     IF (comprator = 8) THEN
       DELETE FROM `mida`.`group`;
     END IF;
END $$

DELIMITER ;