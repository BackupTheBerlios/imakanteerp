DELIMITER $$


CREATE PROCEDURE `mida`.`ls_procedure_country` (IN in_id INT(6), IN comprator TINYINT, IN in_code VARCHAR(10), IN in_name VARCHAR(30))
BEGIN
     IF (comprator = 0) THEN
        SELECT id.n, code.n, name.n FROM n_country n;
     END IF;

     IF comprator = 1 THEN
        INSERT INTO n_country (code.n_country, name.n_country) VALUES(in_code,in_name);
     END IF;

     IF comprator = 2 THEN
        UPDATE n_country SET code.n_country = in_code, name.n_country = in_name
           WHERE id.n_country = in_id;
     END IF;

     IF comprator = 3 THEN
        DELETE FROM n_country WHERE id.n_country = id;
     END IF;

     IF comprator = 4 THEN
        SELECT code.n, name.n FROM n_country n WHERE id.n = in_id;
     END IF;
END$$

DELIMITER ;