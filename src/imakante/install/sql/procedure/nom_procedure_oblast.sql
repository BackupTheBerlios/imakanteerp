DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`nom_procedure_oblast` $$
CREATE PROCEDURE `mida`.`nom_procedure_oblast` (IN comprator TINYINT, IN in_id INT(11), IN in_name VARCHAR(20), IN in_id_country INT(3) )
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id, n.name, n.id_country, c.name
        FROM `mida`.`n_oblast` n, `mida`.`n_country` c WHERE n.id_country=c.id;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `mida`.`n_oblast`( id, name, id_country) VALUES(in_id, in_name, in_id_country);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `mida`.`n_oblast` SET name = in_name, id_country = in_id_country
        WHERE `mida`.`n_oblast`.id = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `mida`.`n_oblast`  WHERE id = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.id, n.name, n.id_country FROM `mida`.`n_oblast` n WHERE n.id = in_id;
     END IF;

     IF (comprator = 5) THEN
          SELECT n.id,  n.name, n.id_country  FROM `mida`.`n_oblast` n  WHERE n.name LIKE CONCAT('%',in_name,'%');

     END IF;


     IF (comprator = 6) THEN
        SELECT * FROM `mida`.`n_country` n ORDER BY name;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id) AS id FROM `mida`.`n_oblast` n;
     END IF;

END $$

DELIMITER ;