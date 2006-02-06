DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`ls_procedure_group` $$
CREATE PROCEDURE `mida`.`ls_procedure_group`(IN in_id INT(6), IN in_nom TINYINT, IN comprator TINYINT, IN in_cod VARCHAR(30), IN in_name VARCHAR(30), IN in_alid TINYINT)
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_n_group, n.cod_n_group, n.name_n_group, n.id_al, anlevel.name_al  FROM `n_group` n, anlevel WHERE nom_n_group = in_nom AND anlevel.id_al = n.id_al;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `n_group`(nom_n_group, cod_n_group, name_n_group, id_al) VALUES(in_nom, in_cod, in_name, in_alid);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `n_group` SET cod_n_group = in_cod, name_n_group = in_name, nom_n_group = in_nom, id_al = in_alid
           WHERE `n_group`.id_n_group = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `n_group`  WHERE id_n_group = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.id_n_group, n.nom_n_group, n.cod_n_group, n.name_n_group, n.alid FROM `n_group` n WHERE `n_group`.id_n_group = in_id;

     END IF;
     IF (comprator = 5) THEN
           IF (in_alid != 0) THEN
             SELECT n.id_n_group,  n.cod_n_group, n.name_n_group, n.id_al, anlevel.name_al  FROM `n_group` n, anlevel  WHERE n.cod_n_group LIKE CONCAT('%',in_cod,'%') AND
             n.name_n_group LIKE CONCAT('%',in_name,'%') AND n.id_al LIKE CONCAT('%',in_alid,'%') AND n.nom_n_group=in_nom AND anlevel.id_al = n.id_al;
          END IF;
          IF (in_alid = 0) THEN
             SELECT n.id_n_group,  n.cod_n_group, n.name_n_group, n.id_al,anlevel.name_al  FROM `n_group` n,anlevel  WHERE n.cod_n_group LIKE CONCAT('%',in_cod,'%') AND
             n.name_n_group LIKE CONCAT('%',in_name,'%') AND n.nom_n_group=in_nom AND anlevel.id_al = n.id_al;
          END IF;
     END IF;

     IF (comprator = 6) THEN
        SELECT * FROM `anlevel` n ORDER BY cod_al;
     END IF;


     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_group) AS id FROM `n_group` n;
     END IF;

     IF (comprator = 8) THEN
       DELETE FROM `n_group`;
     END IF;
END $$

DELIMITER ;