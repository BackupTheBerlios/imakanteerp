﻿DELIMITER $$

DROP PROCEDURE IF EXISTS ls_procedure_group $$
CREATE PROCEDURE ls_procedure_group (IN in_id INT(6), IN in_nom TINYINT, IN comprator TINYINT, IN in_code INT(11), IN in_name VARCHAR(50), IN in_alid TINYINT, IN in_alname VARCHAR(50))
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_n_group, n.cod_n_group, n.name_n_group, n.id_al, anlevel.name_al  FROM `n_group` n, anlevel 
            WHERE nom_n_group = in_nom AND anlevel.id_al = n.id_al ORDER BY n.id_n_group ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `n_group`(nom_n_group, cod_n_group, name_n_group, id_al) VALUES(in_nom, in_code, in_name, in_alid);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `n_group` SET cod_n_group = in_code, name_n_group = in_name, nom_n_group = in_nom, id_al = in_alid
           WHERE `n_group`.id_n_group = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `n_group`  WHERE id_n_group = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.id_n_group, n.nom_n_group, n.cod_n_group, n.name_n_group, n.alid FROM `n_group` n WHERE `n_group`.id_n_group = in_id;

     END IF;
     IF (comprator = 5) THEN
          IF (in_alid > 0 AND in_code > -1) THEN
             SELECT n.id_n_group, n.cod_n_group, n.name_n_group, n.id_al, anlevel.name_al FROM `n_group` n, anlevel
                WHERE n.cod_n_group LIKE CONCAT('%',in_code,'%') AND n.name_n_group LIKE CONCAT('%',in_name,'%') AND anlevel.name_al LIKE CONCAT('%',in_alname,'%')
                AND n.nom_n_group = in_nom AND anlevel.id_al = n.id_al
                ORDER BY n.id_n_group ASC;
          END IF;
          IF (in_alid = 0 AND in_code > -1) THEN
             SELECT n.id_n_group, n.cod_n_group, n.name_n_group, n.id_al,anlevel.name_al FROM `n_group` n, anlevel
                WHERE n.cod_n_group LIKE CONCAT('%',in_code,'%') AND n.name_n_group LIKE CONCAT('%',in_name,'%')
                AND n.nom_n_group = in_nom AND anlevel.id_al = n.id_al
                ORDER BY n.id_n_group ASC;
          END IF;
          IF (in_alid > 0 AND in_code = -1) THEN
            SELECT n.id_n_group, n.cod_n_group, n.name_n_group, n.id_al, anlevel.name_al FROM `n_group` n, anlevel
                WHERE n.name_n_group LIKE CONCAT('%',in_name,'%') AND anlevel.name_al LIKE CONCAT('%',in_alname,'%')
                AND n.nom_n_group = in_nom AND anlevel.id_al = n.id_al
                ORDER BY n.id_n_group ASC;
          END IF;
          IF (in_alid = 0 AND in_code = -1) THEN
            SELECT n.id_n_group, n.cod_n_group, n.name_n_group, n.id_al, anlevel.name_al FROM `n_group` n, anlevel
                WHERE n.name_n_group LIKE CONCAT('%',in_name,'%')
                AND n.nom_n_group = in_nom AND anlevel.id_al = n.id_al
                ORDER BY n.id_n_group ASC;
          END IF;
     END IF;

     IF (comprator = 6) THEN
        SELECT n.id_al, n.cod_al, n.name_al FROM anlevel n ORDER BY cod_al;
     END IF;


     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_group) AS id FROM n_group n;
     END IF;

     IF (comprator = 8) THEN
       DELETE FROM n_group;
     END IF;
END $$

DELIMITER ;