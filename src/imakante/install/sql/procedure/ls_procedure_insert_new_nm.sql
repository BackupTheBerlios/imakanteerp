DELIMITER $$

CREATE PROCEDURE `mida`.`ls_procedure_insert_new_nm` (in_pcode VARCHAR(11), in_name VARCHAR(30), in_oblast INT(6))
BEGIN
   INSERT INTO n_nm (postcode, name, id_oblast) VALUES(in_code,in_name,in_oblast);
END$$

DELIMITER ;