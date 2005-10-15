DELIMITER $$

CREATE PROCEDURE `mida`.`ls_procedure_delete_rec_nm` (d INT)

BEGIN
   DELETE FROM n_ns WHERE id = d;
END$$

DELIMITER ;