DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_baccount $$
CREATE PROCEDURE nom_procedure_baccount (IN comprator TINYINT, IN in_id INT(11), IN in_id_group INT(11), IN in_code INT(11), 
                IN in_name VARCHAR(45), IN in_branch VARCHAR(45), IN in_account VARCHAR(28), IN in_bic VARCHAR(11), 
                IN in_vidval VARCHAR(11), IN in_address VARCHAR(100), IN in_id_tacc INT(11), IN in_comment VARCHAR(250))
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_nbc, n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.branch_nbc, n.account_nbc, n.bic_nbc, 
            n.vidval_nbc, n.address_nbc, n.id_tbacc, nta.name_tbacc, n.comment_nbc FROM n_baccount n
            LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
            LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc
            ORDER BY n.id_nbc ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO n_baccount (id_n_group, code_nbc, name_nbc, branch_nbc, account_nbc, bic_nbc, vidval_nbc, address_nbc, id_tbacc, comment_nbc) 
        VALUES (in_id_group, in_code, in_name, in_branch, in_account, in_bic, in_vidval, in_address, in_id_tacc, in_comment);
     END IF;
     IF (comprator = 2) THEN
        UPDATE n_baccount SET id_n_group = in_id_group, code_nbc = in_code, name_nbc = in_name, branch_nbc = in_branch, account_nbc = in_account,
        bic_nbc = in_bic, vidval_nbc = in_vidval, address_nbc = in_address, id_tbacc = in_id_tacc, comment_nbc = in_comment 
        WHERE n_baccount.id_nbc = in_id;
     END IF;
     IF (comprator = 3) THEN
        DELETE FROM n_baccount  WHERE id_nbc = in_id;
     END IF;
     IF (comprator = 4) THEN
        SELECT n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.branch_nbc, n.account_nbc, n.bic_nbc, n.vidval_nbc, n.address_nbc, 
            n.id_tbacc, nta.name_tbacc, n.comment_nbc FROM n_baccount n
            LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
            LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc
            WHERE n.id_nbc = in_id;
     END IF;
     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
            SELECT n.id_nbc, n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.branch_nbc, n.account_nbc, n.bic_nbc, n.vidval_nbc, 
                n.address_nbc, n.id_tbacc, nta.name_tbacc, n.comment_nbc FROM n_baccount n
                LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc
                WHERE n.name_nbc LIKE CONCAT('%',in_name,'%') ORDER BY n.id_nbc ASC;
        END IF;
        IF (in_code > -1) THEN
            SELECT n.id_nbc, n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.branch_nbc, n.account_nbc, n.bic_nbc, n.vidval_nbc, 
                n.address_nbc, n.id_tbacc, nta.name_tbacc, n.comment_nbc FROM n_baccount n
                LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc
                WHERE n.code_nbc LIKE CONCAT('%',in_code,'%') AND n.name_nbc LIKE CONCAT('%',in_name,'%') ORDER BY n.id_nbc ASC;
        END IF;
     END IF;
     IF (comprator = 6) THEN
        SELECT ntb.id_tbacc, ntb.name_tbacc FROM n_type_bacc ntb;
     END IF;
     IF (comprator = 7) THEN
        SELECT MAX(n.id_nbc) FROM n_baccount n;
     END IF;
     IF (comprator = 8) THEN
        SELECT MAX(n.code_nbc) AS account_code FROM n_baccount n;
     END IF;
     IF (comprator = 9) THEN
        SELECT MAX(ntb.id_ntbacc) AS id_ntbacc FROM n_type_bacc ntb;
     END IF;
     IF (comprator = 10) THEN
        SELECT ng.id_n_group, ng.name_n_group FROM n_group ng WHERE ng.nom_n_group = 6;
     END IF;
     IF (comprator = 11) THEN
        SELECT MAX(ng.id_n_group) AS id_n_group FROM n_group ng WHERE ng.nom_n_group = 6;
     END IF;
END $$

DELIMITER ;