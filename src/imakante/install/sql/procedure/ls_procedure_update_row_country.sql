DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`ls_procedure_update_row_country`$$
CREATE PROCEDURE `mida`.`ls_procedere_update_row_country` (in_pcode VARCHAR(11), in_name VARCHAR(30),in_id INT(11))
BEGIN
    UPDATE n_country SET n_contry.code = in_code, n_country.name = in_name  WHERE id = in_id;
END$$

DELIMITER ;