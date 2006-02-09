DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`sl_procedure_exchange_rate` $$
CREATE PROCEDURE `sl_procedure_exchange_rate`(IN comprator TINYINT, IN in_id INT(10), IN in_date DATE, IN in_id_money INT(11), IN in_value DECIMAL(10,5))
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_sl_exchange_rate, n.date_sl_exchange_rate, n.id_n_money, nm.cod_n_money, n.value_sl_exchange_rate
            FROM sl_exchange_rate n LEFT OUTER JOIN n_money nm ON nm.id_n_money = n.id_n_money;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO sl_exchange_rate (date_sl_exchange_rate, id_n_money, value_sl_exchange_rate) VALUES(in_date, in_id_money, in_value);
     END IF;

     IF (comprator = 2) THEN
        UPDATE sl_exchange_rate SET date_sl_exchange_rate = in_date, id_n_money = in_id_money, value_sl_exchange_rate = in_value
           WHERE sl_exchange_rate.id_sl_exchange_rate = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM sl_exchange_rate  WHERE id_sl_exchange_rate = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.code_ntd, n.name_ntd, n.name_print_ntd FROM sl_exchange_rate n WHERE n.id_sl_exchange_rate = in_id;
     END IF;

     IF (comprator = 5) THEN
        SELECT n.id_sl_exchange_rate, n.datesl_exchange_rate, n.id_n_money, nm.cod_n_money, n.valuesl_exchange_rate
                   FROM sl_exchange_rate n LEFT OUTER JOIN n_money nm ON nm.id_n_money = n.id_n_money
                   WHERE n.date_sl_exchange_rate LIKE CONCAT('%',in_date,'%') AND  nm.cod_n_money LIKE CONCAT('%',in_code_money,'%');
     END IF;

     IF (comprator = 6) THEN
        SELECT nm.id_n_money, nm.cod_n_money FROM n_money nm WHERE nm.id_n_money = in_id_money;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_sl_exchange_rate) AS id FROM sl_exchange_rate n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.id_n_money) AS id_n_money FROM `mida`.`n_money` n;
     END IF;

     IF (comprator = 9) THEN
       DELETE FROM sl_exchange_rate;
     END IF;

END $$

DELIMITER ;