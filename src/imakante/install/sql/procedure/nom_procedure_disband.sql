DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`nom_procedure_disband` $$
CREATE PROCEDURE `mida`.`nom_procedure_disband` (IN in_comprator INT, IN in_id INT, IN in_name VARCHAR(20), IN in_sname VARCHAR(20))
BEGIN


 IF (in_comprator = 0 ) THEN
     SELECT n.id_pam, n.name_pam, n.sname_pam FROM n_product_all_measure n;

 END IF;

 IF (in_comprator = 1 ) THEN

  INSERT INTO n_product_all_measure(name_pam,sname_pam) VALUES(in_name,in_sname);
 END IF;

 IF (in_comprator = 2 ) THEN
  UPDATE n_product_all_measure n SET name_pam = in_name,
                                     sname_pam = in_sname
  WHERE id_pam = in_id;

 END IF;

IF (in_comprator = 4 ) THEN
   DELETE FROM n_product_all_measure
   WHERE id_pam = in_id;
END IF;

IF (in_comprator = 5 ) THEN
  SELECT n.id_pam, n.name_pam, n.sname_pam FROM n_product_all_measure n

   WHERE name_pam like CONCAT('%',in_name,'%') AND sname_pam like CONCAT('%',in_sname,'%');

END IF;

IF (in_comprator = 7 ) THEN
  SELECT MAX(id_pam) FROM  n_product_all_measure;

END IF;

END $$

DELIMITER ;