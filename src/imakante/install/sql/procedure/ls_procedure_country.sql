DROP PROCEDURE IF EXISTS `mida`.`ls_procedure_country`
CREATE PROCEDURE `ls_procedure_country`(IN in_id INT(6), IN comprator TINYINT, IN in_code INT(6), IN in_name VARCHAR(30))
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id, n.code, n.name FROM n_country n;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO n_country (code, name) VALUES(in_code,in_name);
     END IF;

     IF (comprator = 2) THEN
        UPDATE n_country SET code = in_code, name = in_name
           WHERE n_country.id = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_country  WHERE id = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.code, n.name FROM n_country n WHERE n.id = in_id;

     END IF;

     IF (comprator = 5) THEN
        SELECT n.id, n.code, n.name FROM n_country n WHERE n.code LIKE CONCAT('%',in_code,'%') AND
        n.name LIKE CONCAT('%',in_name,'%');
     END IF;

     IF (comprator = 6) THEN
        SELECT MAX(n.code) AS code FROM n_country n;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id) AS id FROM n_country n;
     END IF;

     IF (comprator = 8) THEN
       DELETE FROM n_country;
     END IF;

END