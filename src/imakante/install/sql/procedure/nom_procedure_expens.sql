﻿DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_expens $$
CREATE PROCEDURE nom_procedure_expens (IN comprator TINYINT, IN in_id INT(11),IN in_id_groupe INT(11), IN in_code INT(11), IN in_name VARCHAR(40), IN in_comments VARCHAR(250) )
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_n_expens, n.id_n_group, ng.name_n_group, n.code_n_expens, n.name_n_expens, n.comments_n_expens 
            FROM n_expens n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group ORDER BY n.id_n_expens ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO n_expens( id_n_group, code_n_expens, name_n_expens, comments_n_expens) VALUES(in_id_groupe, in_code, in_name, in_comments);
     END IF;
     IF (comprator = 2) THEN
        UPDATE n_expens SET id_n_group = in_id_groupe, code_n_expens = in_code,   name_n_expens = in_name, comments_n_expens = in_comments
        WHERE n_expens.id_n_expens = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_expens WHERE id_n_expens = in_id;
     END IF;


     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
            SELECT n.id_n_expens, n.id_n_group, ng.name_n_group, n.code_n_expens, n.name_n_expens, n.comments_n_expens 
                FROM n_expens n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                WHERE n.code_n_expens LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_expens ASC;
        END IF;
        IF (in_code > -1) THEN
            SELECT n.id_n_expens, n.id_n_group, ng.name_n_group, n.code_n_expens, n.name_n_expens, n.comments_n_expens 
                FROM n_expens n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                WHERE n.code_n_expens LIKE CONCAT('%',in_code,'%') AND  n.code_n_expens LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_expens ASC;
        END IF;
     END IF;


     IF (comprator = 6) THEN
        SELECT n.id_n_group, n.name_n_group FROM n_group n
                              WHERE n.nom_n_group = 6;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_expens) FROM n_expens n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_n_expens) AS code_n_expens FROM n_expens n;
     END IF;


     IF (comprator = 9) THEN
        SELECT MAX(n.id_n_group) AS id_n_group FROM n_group n
                              WHERE n.nom_n_group = 6;
     END IF;

END $$

DELIMITER ;