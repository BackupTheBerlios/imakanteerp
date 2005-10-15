DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`ls_procedure_select_nm`$$
CREATE PROCEDURE `ls_procedure_select_nm`()
BEGIN
  SELECT n.id, n.postcode, n.name, n.id_oblast, n_oblast.name FROM n_nm n LEFT JOIN n_oblast ON(n_oblast.id = n.id_oblast);

END$$

DELIMITER ;