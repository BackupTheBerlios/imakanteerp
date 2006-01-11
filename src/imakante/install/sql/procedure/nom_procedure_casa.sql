DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`nom_procedure_casa` $$
CREATE PROCEDURE `nom_procedure_casa`(IN comprator TINYINT, IN in_id INT(11),IN in_id_groupe INT(10), IN in_code INT(10), IN in_name VARCHAR(40), IN in_comments VARCHAR(250) )
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_n_casa, n.id_n_group, ng.name_n_group, n.code_n_casa, n.name_n_casa,
                   n.comments_n_casa FROM n_casa n LEFT OUTER JOIN n_group ng ON ng.id_n_group=n.id_n_group;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `mida`.`n_casa`( id_n_group, code_n_casa, name_n_casa, comments_n_casa) VALUES(in_id, in_name, in_id_country);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `mida`.`n_casa` SET id_n_group = in_id_groupe, code_n_casa = in_code,   name_n_casa = in_name, comments_n_casa = in_comments
        WHERE `mida`.`n_casa`.id_n_casa = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `mida`.`n_casa`  WHERE id_n_casa = in_id;
     END IF;


     IF (comprator = 5) THEN
        SELECT n.id_n_casa, n.id_n_group, ng.name_n_group, n.code_n_casa, n.name_n_casa,
                   n.comments_n_casa FROM n_casa n LEFT OUTER JOIN n_group ng ON ng.id_n_group=n.id_n_group
                   WHERE n.code_n_casa LIKE CONCAT('%',in_code,'%') AND  n.code_n_casa LIKE CONCAT('%',in_name,'%');

     END IF;


     IF (comprator = 6) THEN
        SELECT n.id_n_group, n.cod_n_group FROM n_group n
                              WHERE n.nom_n_group = 5;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_casa) AS id FROM `mida`.`n_casa` n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_n_casa) AS code_n_casa FROM `mida`.`n_casa` n;
     END IF;

END $$

DELIMITER ;