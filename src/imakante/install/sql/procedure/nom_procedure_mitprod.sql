DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`nom_procedure_mitprod` $$
CREATE PROCEDURE `nom_procedure_mitprod`(IN in_id INT(11), IN comprator INT, IN in_code varchar(20), IN in_name VARCHAR(30))
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_n_mitprod, n.code_n_mitprod, n.name_n_mitprod FROM n_mitprod n ORDER BY n.id_n_mitprod ASC;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO n_mitprod (code_n_mitprod, name_n_country) VALUES(in_code, in_name);
     END IF;

     IF (comprator = 2) THEN
        UPDATE n_country SET code_n_mitprod = in_code, name_n_mitprod = in_name WHERE n_mitprod.id_n_mitprod = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_mitprod  WHERE id_n_mitprod = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.code_n_mitprod, n.name_n_mitprod FROM n_mitprod n WHERE n.id_n_mitprod = in_id;
     END IF;

     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
        SELECT n.id_n_mitprod, n.code_n_mitprod, n.name_n_mitprod FROM n_mitprod n
            WHERE n.name_n_mitprod LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_mitprod ASC;
        END IF;
        IF (in_code > -1) THEN
        SELECT n.id_n_mitprod, n.code_n_mitprod, n.name_n_mitprod FROM n_mitprod n
            WHERE n.code_n_mitprod LIKE CONCAT('%',in_code,'%') AND n.name_n_mitprod LIKE CONCAT('%',in_name,'%')
            ORDER BY n.id_n_mitprod ASC;
        END IF;
     END IF;

     IF (comprator = 6) THEN
        SELECT MAX(n.code_n_mitprod) AS code FROM n_mitprod n;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_mitprod) AS id FROM n_mitprod n;
     END IF;

     IF (comprator = 8) THEN
       DELETE FROM n_mitprod;
     END IF;


END $$

DELIMITER ;