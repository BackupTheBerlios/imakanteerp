DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`ls_procedure_delete_rec_country`$$
CREATE PROCEDURE `mida`.`ls_procedure_delete_rec_country` (in_id INT)
BEGIN
   DELETE FROM n_country WHERE id = d;
END$$

DELIMITER ;