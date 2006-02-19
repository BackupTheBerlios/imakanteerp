DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`n_baccount` $$
CREATE PROCEDURE `nom_procedure_baccount`(IN comprator TINYINT, IN in_id INT(11), IN in_id_group INT(11), IN in_code VARCHAR(10),
                IN in_name VARCHAR(45), IN in_account VARCHAR(28), IN in_address VARCHAR(100), IN in_id_tacc INT(11))
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_nbc, n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.account_nbc, n.address_nbc, 
            n.id_tbacc, nta.name_tbacc FROM n_baccount n
            LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
            LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `mida`.`n_baccount`(id_n_group, code_nbc, name_nbc, account_nbc, address_nbc, id_tbacc) 
        VALUES (in_id_group, in_code, in_name, in_account, in_address, in_id_tacc);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `mida`.`n_baccount` SET id_n_group = in_id_group, code_nbc = in_code, name_nbc = in_name, account_nbc = in_account,
        address_nbc = in_address, id_tbacc = in_id_tacc WHERE `mida`.`n_baccount`.id_nbc = in_id;
     END IF;
     IF (comprator = 3) THEN
        DELETE FROM `mida`.`n_baccount`  WHERE id_nbc = in_id;
     END IF;
     IF (comprator = 4) THEN
        SELECT n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.account_nbc, n.address_nbc, 
            n.id_tbacc, nta.name_tbacc FROM n_baccount n
            LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
            LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc
            WHERE n.id_nbc = in_id;
     END IF;
     IF (comprator = 5) THEN
        SELECT n.id_nbc, n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.account_nbc, n.address_nbc, 
            n.id_tbacc, nta.name_tbacc FROM n_baccount n
            LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
            LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc
            WHERE n.code_nbc LIKE CONCAT('%',in_code,'%') AND n.name_nbc LIKE CONCAT('%',in_name,'%');
     END IF;
     IF (comprator = 6) THEN
        SELECT ntb.id_tbacc, ntb.name_tbacc FROM n_type_doc ntb;
     END IF;
     IF (comprator = 7) THEN
        SELECT MAX(n.id_nbc) FROM `mida`.`n_baccount` n;
     END IF;
     IF (comprator = 8) THEN
        SELECT MAX(n.code_nbc) AS account_code FROM `mida`.`n_baccount` n;
     END IF;
     IF (comprator = 9) THEN
        SELECT MAX(ntd.id_ntd) AS id_ntd FROM n_type_doc ntd;
     END IF;
     IF (comprator = 10) THEN
        SELECT ng.id_n_group, ng.name_n_group FROM n_group ng WHERE n.nom_n_group = 6;
     END IF;
     IF (comprator = 11) THEN
        SELECT MAX(ng.id_n_group) AS id_n_group FROM n_group n WHERE n.nom_n_group = 6;
     END IF;
END $$

DELIMITER ;