DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`sl_procedure_m` $$
CREATE PROCEDURE `mida`.`sl_procedure_m` (IN vid INT(11),IN modulator INT(11), IN comprator INT(11), IN area VARCHAR(3),
                  `                       IN BGDATE VARCHAR(20), IN ENDDATE VARCHAR(20))
BEGIN


           IF (comprator = 0) THEN

                IF (vid = 0) THEN

                   IF (modulator = 1) THEN
                      SELECT
                        `sl_m_operation`.`number_sl_mop`,
                        `n_casa`.`code_n_casa`,
                        `n_casa`.`name_n_casa`,
                        `n_contragent`.`code_contragent`,
                        `n_contragent`.`name_n_contragent`,
                        `sl_m_operation`.`date_is`,
                        `sl_m_operation`.`sum_sl_mop`,
                        `n_money`.`cod_n_money`,
                        `sl_exchange_rate`.`value_sl_exchange_rate`,
                        `sl_m_operation`.`sum_os_val_sl_mop`
                      FROM
                        `sl_m_operation`
                      Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`in_sl_mop`
                      Inner Join `n_contragent` ON `n_contragent`.`id_contragent` = `sl_m_operation`.`out_sl_mop`
                      Inner Join `n_incoms` ON `n_incoms`.`id_n_incoms` = `sl_m_operation`.`id_order_spec`
                      Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                      Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                      WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE

                       ;
                   END IF;

                    IF (modulator  =  2) THEN
                       SELECT
                        `sl_m_operation`.`number_sl_mop`,
                        `n_casa`.`code_n_casa`,
                        `n_baccount`.`code_nbc`,
                        `n_baccount`.`name_nbc`,
                        `n_casa`.`name_n_casa`,
                        `sl_m_operation`.`date_is`,
                        `sl_m_operation`.`sum_sl_mop`,
                        `n_money`.`cod_n_money`,
                        `sl_exchange_rate`.`value_sl_exchange_rate`,
                        `sl_m_operation`.`sum_os_val_sl_mop`
                       FROM
                        `sl_m_operation`
                       Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`in_sl_mop`
                       Inner Join `n_incoms` ON `n_incoms`.`id_n_incoms` = `sl_m_operation`.`id_order_spec`
                       Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                       Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                       Inner Join `n_baccount` ON `n_baccount`.`id_nbc` = `sl_m_operation`.`out_sl_mop`
                       WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE

                       ;
                    END IF;

                    IF (modulator = 3) THEN
                       SELECT
                        `sl_m_operation`.`number_sl_mop`,
                        `n_casa`.`code_n_casa`,
                        `n_casa`.`name_n_casa`,
                        `ls_n_person`.`name_ls_n_person`,
                        `ls_n_person`.`code_ls_n_person`,
                        `sl_m_operation`.`date_is`,
                        `sl_m_operation`.`sum_sl_mop`,
                        `n_money`.`cod_n_money`,
                        `sl_exchange_rate`.`value_sl_exchange_rate`,
                        `sl_m_operation`.`sum_os_val_sl_mop`
                       FROM
                        `sl_m_operation`
                       Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`in_sl_mop`
                       Inner Join `n_incoms` ON `n_incoms`.`id_n_incoms` = `sl_m_operation`.`id_order_spec`
                       Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                       Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                       Inner Join `ls_n_person` ON `ls_n_person`.`id_ls_n_person` = `sl_m_operation`.`out_sl_mop`
                       WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE
                        ;
                    END IF;


                END IF;


                IF (vid = 1) THEN

                        IF (modulator = 0) THEN
                         SELECT
                          `sl_m_operation`.`number_sl_mop`,
                          `casa_in`.`code_n_casa` AS `casa_code_in`,
                          `casa_in`.`name_n_casa` AS `case_name_in`,
                          `n_casa`.`name_n_casa` AS `casa_cde_out`,
                          `n_casa`.`code_n_casa` AS `casa_name_out`,
                          `n_expens`.`name_n_expens`,
                          `n_expens`.`code_n_expens`,
                          `sl_m_operation`.`date_is`,
                          `sl_m_operation`.`sum_sl_mop`,
                          `n_money`.`cod_n_money`,
                          `sl_exchange_rate`.`value_sl_exchange_rate`,
                          `sl_m_operation`.`sum_os_val_sl_mop`
                         FROM
                          `sl_m_operation`
                         Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                         Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                         Inner Join `n_expens` ON `n_expens`.`id_n_expens` = `sl_m_operation`.`id_order_spec`
                         Inner Join `n_casa` AS `casa_in` ON `casa_in`.`id_n_casa` = `sl_m_operation`.`out_sl_mop`
                         Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`in_sl_mop`
                         WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE
                        ;
                        END IF;

                        IF (modulator = 1) THEN
                         SELECT
                          `sl_m_operation`.`number_sl_mop`,
                          `n_casa`.`code_n_casa`,
                          `n_casa`.`name_n_casa`,
                          `n_contragent`.`code_contragent`,
                          `n_contragent`.`name_n_contragent`,
                          `n_expens`.`name_n_expens`,
                          `n_expens`.`code_n_expens`,
                          `sl_m_operation`.`date_is`,
                          `sl_m_operation`.`sum_sl_mop`,
                          `n_money`.`cod_n_money`,
                          `sl_exchange_rate`.`value_sl_exchange_rate`,
                          `sl_m_operation`.`sum_os_val_sl_mop`
                        FROM
                          `sl_m_operation`
                        Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                        Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                        Inner Join `n_expens` ON `n_expens`.`id_n_expens` = `sl_m_operation`.`id_order_spec`
                        Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`out_sl_mop`
                        Inner Join `n_contragent` ON `n_contragent`.`id_contragent` = `sl_m_operation`.`in_sl_mop`
                        WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE
                        ;
                        END IF;

                       IF (modulator = 2) THEN
                        SELECT
                        `sl_m_operation`.`number_sl_mop`,
                        `n_casa`.`code_n_casa`,
                        `n_casa`.`name_n_casa`,
                        `n_baccount`.`name_nbc`,
                        `n_baccount`.`code_nbc`,
                        `n_expens`.`name_n_expens`,
                        `n_expens`.`code_n_expens`,
                        `sl_m_operation`.`date_is`,
                        `sl_m_operation`.`sum_sl_mop`,
                        `n_money`.`cod_n_money`,
                        `sl_exchange_rate`.`value_sl_exchange_rate`,
                        `sl_m_operation`.`sum_os_val_sl_mop`
                        FROM
                        `sl_m_operation`
                        Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                        Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                        Inner Join `n_expens` ON `n_expens`.`id_n_expens` = `sl_m_operation`.`id_order_spec`
                        Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`out_sl_mop`
                        Inner Join `n_baccount` ON `n_baccount`.`id_nbc` = `sl_m_operation`.`in_sl_mop`
                        WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE
                        ;
                        END IF;

                        IF (modulator = 3) THEN
                        SELECT
                        `sl_m_operation`.`number_sl_mop`,
                        `n_casa`.`code_n_casa`,
                        `n_casa`.`name_n_casa`,
                        `ls_n_person`.`code_ls_n_person`,
                        `ls_n_person`.`name_ls_n_person`,
                        `n_expens`.`name_n_expens`,
                        `n_expens`.`code_n_expens`,
                        `sl_m_operation`.`date_is`,
                        `sl_m_operation`.`sum_sl_mop`,
                        `n_money`.`cod_n_money`,
                        `sl_exchange_rate`.`value_sl_exchange_rate`,
                        `sl_m_operation`.`sum_os_val_sl_mop`
                        FROM
                        `sl_m_operation`
                        Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                        Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                        Inner Join `n_expens` ON `n_expens`.`id_n_expens` = `sl_m_operation`.`id_order_spec`
                        Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`out_sl_mop`
                        Inner Join `ls_n_person` ON `ls_n_person`.`id_ls_n_person` = `sl_m_operation`.`in_sl_mop`
                        WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE
                        ;
                       END IF;

                END IF;
           END IF;


END $$

DELIMITER ;