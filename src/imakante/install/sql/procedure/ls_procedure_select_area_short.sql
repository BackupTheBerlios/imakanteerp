DELIMITER $$

CREATE PROCEDURE `mida`.`ls_procedure_select_area_short` ()
BEGIN
   SELECT n.name FROM n_oblast n ORDER BY n.id;
END$$

DELIMITER ;