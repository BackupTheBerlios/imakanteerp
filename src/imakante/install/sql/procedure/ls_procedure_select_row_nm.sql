DELIMITER $$

CREATE PROCEDURE `mida`.`ls_procedure_select_row_nm` (row_index INT)
BEGIN
      SELECT n.id, n.postcode, n.name, n.id_oblast FROM n_nm n WHERE n.id = row_index;
END$$

DELIMITER ;