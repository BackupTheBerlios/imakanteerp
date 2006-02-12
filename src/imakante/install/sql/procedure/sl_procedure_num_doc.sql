DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`sl_doc_type_num` $$
CREATE PROCEDURE `sl_procedure_num_doc`(IN comprator TINYINT, IN in_id INT(11), IN in_id_doctype INT(11), IN in_area INT(11), IN in_name VARCHAR(40), IN in_comments VARCHAR(250) )
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_sdtn, n.id_ntd, ntd.name_ntd, n.area_number_sdtn 
            FROM sl_doc_type_num n LEFT OUTER JOIN n_type_doc ntd ON ntd.id_ntd = n.id_ntd;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `mida`.`sl_doc_type_num`( id_n_group, code_n_casa, name_n_casa, comments_n_casa) VALUES(in_id_groupe, in_code, in_name, in_comments);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `mida`.`sl_doc_type_num` SET id_n_group = in_id_groupe, code_n_casa = in_code, name_n_casa = in_name, comments_n_casa = in_comments
        WHERE `mida`.`n_casa`.id_n_casa = in_id;
     END IF;
     IF (comprator = 3) THEN
        DELETE FROM `mida`.`sl_doc_type_num`  WHERE id_n_casa = in_id;
     END IF;

     IF (comprator = 5) THEN
        SELECT n.id_n_casa, n.id_n_group, ng.name_n_group, n.code_n_casa, n.name_n_casa,
                   n.comments_n_casa FROM sl_doc_type_num n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                   WHERE n.code_n_casa LIKE CONCAT('%',in_code,'%') AND  n.code_n_casa LIKE CONCAT('%',in_name,'%');
     END IF;
     IF (comprator = 6) THEN
        SELECT n.id_n_group, n.name_n_group FROM n_group n WHERE n.nom_n_group = 5;
     END IF;
     IF (comprator = 7) THEN
        SELECT MAX(n.id_sdtn) FROM `mida`.`sl_doc_type_num` n;
     END IF;
     IF (comprator = 8) THEN
        SELECT MAX(n.code_n_casa) AS code_n_casa FROM `mida`.`sl_doc_type_num` n;
     END IF;
     IF (comprator = 9) THEN
        SELECT MAX(n.id_n_group) AS id_n_group FROM n_group n
                              WHERE n.nom_n_group = 5;
     END IF;
END $$

DELIMITER ;