DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`sl_procedure_paying_orders` $$
CREATE PROCEDURE `sl_procedure_paying_orders`(IN comprator TINYINT, IN in_id INT(11), IN in_order_person INT(11), 
                                            IN in_id_spt INT(11), IN in_id_nbc INT(11), IN in_id_person INT(11), 
                                            IN in_id_contragent INT(11), IN in_code INT(11), IN in_name VARCHAR(45), 
                                            IN in_amount DECIMAL(12,2), IN in_osnovanie VARCHAR(60), IN in_comment_spo VARCHAR(60), 
                                            IN beginDate VARCHAR(15), IN endDate VARCHAR(15))
BEGIN
     IF (comprator = 0) THEN
        IF (in_order_person = 0) THEN
          SELECT po.id_spo, po.ordering_person, po.id_spt, pt.type_porder, 
            po.id_nbc, nb.name_nbc, nb.account_nbc, nb.id_tbacc, tb.name_tbacc, 
            po.id_contragent, nc.name_n_contragent, nc.code_contragent, nc.BANKNAMER, nc.IBANR, nc.BICR, nc.VIDVALR,
            nc.BANKNAMED, nc.IBAND, nc.BICD, nc.VIDVALD, po.amount, po.osnovanie, po.comment_spo, DATE(po.instant) 
            FROM sl_paying_orders po 
            LEFT OUTER JOIN sl_porder_types pt ON pt.id_spt = po.id_spt 
            LEFT OUTER JOIN n_baccount nb ON nb.id_nbc = po.id_nbc 
            LEFT OUTER JOIN n_contragent nc ON nc.id_contragent = po.id_contragent 
            LEFT OUTER JOIN n_type_bacc tb ON tb.id_tbacc = nb.id_tbacc 
            WHERE po.ordering_person = 0 
            ORDER BY po.id_spo ASC;
        END IF;
        IF (in_order_person = 1) THEN
          SELECT po.id_spo, po.ordering_person, po.id_spt, pt.type_porder, po.id_ls_n_person, p.name_ls_n_person, 
            po.id_contragent, nc.name_n_contragent, nc.code_contragent, nc.BANKNAMER, nc.IBANR, nc.BICR, nc.VIDVALR,
            nc.BANKNAMED, nc.IBAND, nc.BICD, nc.VIDVALD, po.amount, po.osnovanie, po.comment_spo, DATE(po.instant) 
            FROM sl_paying_orders po 
            LEFT OUTER JOIN sl_porder_types pt ON pt.id_spt = po.id_spt  
            LEFT OUTER JOIN ls_n_person p ON p.id_ls_n_person = po.id_ls_n_person 
            LEFT OUTER JOIN n_contragent nc ON nc.id_contragent = po.id_contragent 
            WHERE po.ordering_person = 1 
            ORDER BY po.id_spo ASC;
        END IF;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO sl_paying_orders (ordering_person, id_spt, id_nbc, id_ls_n_person, id_contragent, amount) 
                VALUES(in_order_person, in_id_spt, in_id_nbc, in_id_person, in_id_contragent, in_amount);
     END IF;

     IF (comprator = 2) THEN
        UPDATE sl_paying_orders  
            SET ordering_person = in_order_person, id_spt = in_id_spt, id_nbc = in_id_nbc, id_ls_n_person = in_id_person, 
                id_contragent = in_id_contragent, amount = in_amount, instant = CURRENT_TIMESTAMP 
            WHERE sl_paying_orders.id_spo = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM sl_paying_orders WHERE id_spo = in_id;
     END IF;

     IF (comprator = 4) THEN
          SELECT po.id_spo, po.id_spt, pt.type_porder, po.id_nbc, nb.name_nbc, nb.account_nbc, nb.id_tbacc, tb.name_tbacc, 
            po.id_contragent, nc.name_n_contragent, nc.code_contragent, nc.BANKNAMER, nc.IBANR, nc.BICR, nc.VIDVALR,
            nc.BANKNAMED, nc.IBAND, nc.BICD, nc.VIDVALD, po.amount, DATE(po.instant) 
            FROM sl_paying_orders po 
            LEFT OUTER JOIN sl_porder_types pt ON pt.id_spt = po.id_spt
            LEFT OUTER JOIN n_baccount nb ON nb.id_nbc = po.id_nbc 
            LEFT OUTER JOIN n_contragent nc ON nc.id_contragent = po.id_contragent 
            LEFT OUTER JOIN n_type_bacc tb ON tb.id_tbacc = nb.id_tbacc 
            WHERE po.id_spo = in_id;
     END IF;

     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
            SELECT po.id_spo, po.id_spt, pt.type_porder, po.id_nbc, nb.name_nbc, nb.account_nbc, nb.id_tbacc, tb.name_tbacc, 
            po.id_contragent, nc.name_n_contragent, nc.code_contragent, nc.BANKNAMER, nc.IBANR, nc.VIDVALR,
            nc.BANKNAMED, nc.IBAND, nc.VIDVALD, po.amount, DATE(po.instant) 
            FROM sl_paying_orders po 
            LEFT OUTER JOIN sl_porder_types pt ON pt.id_spt = po.id_spt
            LEFT OUTER JOIN n_baccount nb ON nb.id_nbc = po.id_nbc 
            LEFT OUTER JOIN n_contragent nc ON nc.id_contragent = po.id_contragent 
            LEFT OUTER JOIN n_type_bacc tb ON tb.id_tbacc = nb.id_tbacc
            WHERE  nc.name_contragent LIKE CONCAT('%',in_name,'%')    
            ORDER BY po.id_spt ASC;
        END IF;
        IF (in_code > -1 ) THEN
            SELECT po.id_spo, po.id_spt, pt.type_porder, po.id_nbc, nb.name_nbc, nb.account_nbc, nb.id_tbacc, tb.name_tbacc, 
            po.id_contragent, nc.name_n_contragent, nc.code_contragent, nc.BANKNAMER, nc.IBANR, nc.VIDVALR,
            nc.BANKNAMED, nc.IBAND, nc.VIDVALD, po.amount, DATE(po.instant) 
            FROM sl_paying_orders po 
            LEFT OUTER JOIN sl_porder_types pt ON pt.id_spt = po.id_spt
            LEFT OUTER JOIN n_baccount nb ON nb.id_nbc = po.id_nbc 
            LEFT OUTER JOIN n_contragent nc ON nc.id_contragent = po.id_contragent 
            LEFT OUTER JOIN n_type_bacc tb ON tb.id_tbacc = nb.id_tbacc 
            WHERE nc.code_contragent LIKE CONCAT('%',in_code,'%') AND nc.name_n_contragent LIKE CONCAT('%',in_name,'%')
            ORDER BY po.id_spt ASC;
        END IF;
     END IF;

     IF (comprator = 6) THEN
        SELECT pt.id_spt, pt.type_porder FROM sl_porder_types pt ORDER BY pt.id_spt ASC;
     END IF;

     IF (comprator = 7) THEN
        SELECT nb.id_nbc, nb.name_nbc, nb.account_nbc,  tb.name_tbacc
        FROM n_baccount nb 
        LEFT OUTER JOIN n_type_bacc tb ON tb.id_tbacc = nb.id_tbacc 
        ORDER BY nb.id_nbc ASC;
     END IF;

     IF (comprator = 8) THEN
        SELECT nc.id_contragent, nc.name_n_contragent, nc.code_contragent, nc.BANKNAMER, nc.IBANR, nc.BICR, nc.VIDVALR,
        nc.BANKNAMED, nc.IBAND, nc.BICD, nc.VIDVALD 
        FROM n_contragent nc ORDER BY nc.id_contragent ASC;
     END IF;

     IF (comprator = 9) THEN
        SELECT tb.id_tbacc, tb.name_tbacc FROM n_type_bacc tb ORDER BY tb.id_tbacc ASC;
     END IF;

     IF (comprator = 10) THEN
        SELECT MAX(po.id_spo) FROM sl_paying_orders po;
     END IF;

     IF (comprator = 11) THEN
        SELECT nm.id_n_money, nm.cod_lat_n_money FROM n_money nm ORDER BY nm.id_n_money ASC;
     END IF;

     IF (comprator = 12) THEN 
        SELECT p.id_ls_n_person, p.code_ls_n_person, p.name_ls_n_person, p.egn_ls_n_person FROM ls_n_person p ORDER BY p.id_ls_n_person ASC;
     END IF;
END $$

DELIMITER ;