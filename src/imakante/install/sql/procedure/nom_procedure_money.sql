DELIMITER $$


CREATE PROCEDURE `mida`.`nom_procedure_money1` (IN in_id INT(6), IN comprator INT(6), IN in_code VARCHAR(6), IN in_cod_lat VARCHAR(6), IN in_name VARCHAR(30), IN in_comment VARCHAR(255))
BEGIN        
     IF (comprator = 0) THEN
        SELECT n.id, n.code, n.cod_lat, n.name FROM n_money n;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO n_money(code, cod_lat, name, comments ) VALUES(in_code, in_lat_cod, in_name, in_comment);
     END IF;

     IF (comprator = 2) THEN
        UPDATE n_country SET code = in_code, cod_lat = in_cod_lat, name = in_name, comments = in_comment
           WHERE n_money.id = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_money  WHERE id = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.code, n.cod_lat, n.name, comments FROM n_money n WHERE n.id = in_id;

     END IF;

     IF (comprator = 5) THEN
        SELECT n.id, n.code, n.cod_lat, n.name FROM n_money n WHERE n.code LIKE CONCAT('%',in_code,'%') AND
        n.cod_lat LIKE CONCAT('%',in_cod_lat,'%') AND n.name LIKE CONCAT('%',in_name,'%');
     END IF;

     IF (comprator = 6) THEN
        SELECT MAX(n.code) AS code FROM n_money n;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id) AS id FROM n_money n;
     END IF;
     IF (comprator = 8) THEN
       DELETE FROM n_money;
     END IF;


END $$

DELIMITER ;