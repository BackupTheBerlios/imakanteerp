DELIMITER $$

CREATE PROCEDURE `mida`.`ls_procedure_update_nm` (in_pcode VARCHAR(11), in_name VARCHAR(30), in_oblast INT(6), in_id INT(11))
BEGIN
  UPDATE n_nm SET postcode = in_code, name = in_name, id_oblast = in_oblast WHERE id = in_id;
END$$

DELIMITER ;