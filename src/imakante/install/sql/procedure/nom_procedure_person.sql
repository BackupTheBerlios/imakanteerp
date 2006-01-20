DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`nom_procedure_person` $$
CREATE PROCEDURE `nom_procedure_person`(IN comprator TINYINT, IN in_id INT(11),IN in_id_group INT(11), IN in_egn VARCHAR(10), IN in_nomlk VARCHAR(9), IN in_name VARCHAR(45), IN in_comment VARCHAR(250) )
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_ls_n_person, n.id_n_group, ng.name_n_group, n.egl_ls_n_person, n.nlk_ls_n_person, n.name_ls_n_person,
                   n.comment_ls_n_person FROM ls_n_person n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO `mida`.`ls_n_person`(id_n_group, egn_ls_n_person, nlk_ls_n_person, name_ls_n_person, comment_ls_n_person) VALUES(in_id_group, in_egn, in_nomlk, in_name, in_comment);
     END IF;

     IF (comprator = 2) THEN
        UPDATE `mida`.`ls_n_person` SET id_n_group = in_id_group, egn_ls_n_casa = in_egn, nlk_ls_n_person = in_nomlk, name_ls_n_person = in_name, comment_ls_n_casa = in_comment
        WHERE `mida`.`ls_n_person`.id_ls_n_person = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `mida`.`ls_n_person`  WHERE id_ls_n_person = in_id;
     END IF;

     IF (comprator = 5) THEN
        SELECT n.id_ls_n_person, n.id_n_group, ng.name_n_group, n.egn_ls_n_person, n.nlk_ls_n_person, n.name_ls_n_person,
                   n.comment_ls_n_person FROM ls_n_person n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                   WHERE n.egn_ls_n_person LIKE CONCAT('%',in_egn,'%') AND n.name_ls_n_person LIKE CONCAT('%',in_name,'%');
     END IF;

     IF (comprator = 6) THEN
        SELECT n.id_n_group, n.name_n_group FROM n_group n
                              WHERE n.nom_n_group = 3;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_casa) FROM `mida`.`ls_n_person` n;
     END IF;

     IF (comprator = 9) THEN
        SELECT MAX(n.id_n_group) AS id_n_group FROM n_group n
                              WHERE n.nom_n_group = 3;
     END IF;

END $$

DELIMITER ;