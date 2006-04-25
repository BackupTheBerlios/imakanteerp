DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_oblast $$
CREATE PROCEDURE nom_procedure_oblast (IN comprator TINYINT, IN in_id INT(11), IN in_name VARCHAR(20), IN in_id_country INT(3), IN in_country VARCHAR(45) )
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_n_oblast, n.name_n_oblast, n.id_n_country, c.name_n_country
        FROM n_oblast n, n_country c WHERE n.id_n_country = c.id_n_country ORDER BY n.id_n_oblast ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `n_oblast`( name_n_oblast, id_n_country) VALUES(in_name, in_id_country);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `n_oblast` SET name_n_oblast = in_name, id_n_country = in_id_country
        WHERE `n_oblast`.id_n_oblast = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `n_oblast`  WHERE id_n_oblast = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.id_n_oblast, n.name_n_oblast, n.id_n_country FROM `n_oblast` n WHERE n.id_n_oblast = in_id;
     END IF;

     IF (comprator = 5) THEN
        SELECT n.id_n_oblast, n.name_n_oblast, n.id_n_country,c.name_n_country  FROM `n_oblast` n, `n_country` c 
            WHERE n.name_n_oblast LIKE CONCAT('%',in_name,'%') AND c.name_n_country LIKE CONCAT('%',in_country,'%') AND c.id_n_country = n.id_n_country
            ORDER BY n.id_n_oblast ASC;
     END IF;

     IF (comprator = 6) THEN
        SELECT id_n_country, code_n_country, name_n_country FROM n_country n ORDER BY name_n_country;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_oblast) AS id FROM `n_oblast` n;
     END IF;

END $$

DELIMITER ;