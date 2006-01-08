DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`nom_procedure_naselenimesta` $$
CREATE PROCEDURE `nom_procedure_naselenimesta`(IN comprator TINYINT, IN in_id INT(11), IN in_postcode INT(6), IN in_name VARCHAR(20), IN in_id_oblast INT(3) )
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id, n.postcode, n.name, n.id_oblast, obl.name
        FROM `mida`.`n_nm` n, `mida`.`n_oblast` obl WHERE n.id_oblast=obl.id;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `mida`.`n_nm`( id, postcode, name, id_oblast) VALUES(in_id, in_postcode, in_name, in_id_oblast);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `mida`.`n_nm` SET postcode = in_postcode, name = in_name, id_oblast = in_id_oblast
        WHERE `mida`.`n_nm`.id = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `mida`.`n_nm`  WHERE id = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.id, n.postcode, n.name, n.id_oblast FROM `mida`.`n_nm` n WHERE n.id = in_id;
     END IF;

     IF (comprator = 5) THEN
        IF (in_postcode!=0)  THEN
          SELECT n.id,  n.postcode, n.name, n.id_oblast  FROM `mida`.`n_nm` n  WHERE n.postcode LIKE CONCAT(in_postcode,'%') AND
          n.name LIKE CONCAT('%',in_name,'%');
        END IF;
        IF (in_postcode=0)  THEN
          SELECT n.id,  n.postcode, n.name, n.id_oblast  FROM `mida`.`n_nm` n  WHERE n.name LIKE CONCAT('%',in_name,'%');
        END IF;
     END IF;


     IF (comprator = 6) THEN
        SELECT * FROM `mida`.`n_oblast` n ORDER BY name;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id) AS id FROM `mida`.`n_nm` n;
     END IF;
END $$

DELIMITER ;