DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_incom $$
CREATE PROCEDURE nom_procedure_incom (IN comprator TINYINT, IN in_id INT(11),IN in_id_groupe INT(11), IN in_code INT(11), IN in_name VARCHAR(40), IN in_comments VARCHAR(250) )
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_n_incoms, n.id_n_group, ng.name_n_group, n.code_n_incoms, n.name_n_incoms, n.comments_n_incoms 
            FROM n_incoms n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group ORDER BY n.id_n_incoms ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO n_incoms ( id_n_group, code_n_incoms, name_n_incoms, comments_n_incoms) VALUES(in_id_groupe, in_code, in_name, in_comments);
     END IF;
     IF (comprator = 2) THEN
        UPDATE n_incoms SET id_n_group = in_id_groupe, code_n_incoms = in_code,   name_n_incoms = in_name, comments_n_incoms = in_comments
        WHERE n_incoms.id_n_incoms = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_incoms WHERE id_n_incoms = in_id;
     END IF;


     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
            SELECT n.id_n_incoms, n.id_n_group, ng.name_n_group, n.code_n_incoms, n.name_n_incoms, n.comments_n_incoms 
                FROM n_incoms n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                WHERE n.code_n_incoms LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_incoms ASC;
        END IF;
        IF (in_code > -1) THEN
            SELECT n.id_n_incoms, n.id_n_group, ng.name_n_group, n.code_n_incoms, n.name_n_incoms, n.comments_n_incoms 
                FROM n_incoms n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                WHERE n.code_n_incoms LIKE CONCAT('%',in_code,'%') AND  n.code_n_incoms LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_incoms ASC;
        END IF;
     END IF;


     IF (comprator = 6) THEN
        SELECT n.id_n_group, n.name_n_group FROM n_group n
                              WHERE n.nom_n_group = 5;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_incoms) FROM n_incoms n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_n_incoms) AS code_n_incoms FROM n_incoms n;
     END IF;


     IF (comprator = 9) THEN
        SELECT MAX(n.id_n_group) AS id_n_group FROM n_group n
                              WHERE n.nom_n_group = 5;
     END IF;

END $$

DELIMITER ;